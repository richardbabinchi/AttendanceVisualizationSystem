SELECT 
ss.id session_id,
ss.event_id event_id,
ee.module_id event_module_id,
ms.id  module_id,
ms.name module_name,
ee.name event_name,
ss.event_date event_date,
ss.start_time start_time,
ss.end_time end_time,
ss.start_attendance_at start_attendance_at,
ss.end_attendance_at end_attendance_at
FROM
public.sessions ss
INNER JOIN  public.events ee
ON 
ss.event_id=ee.id
INNER JOIN public.modules ms
ON
ee.module_id=ms.id
ORDER BY ms.name;

SELECT 
us.id user_id,
us.name name,
sc.name school_name,
us.name user_name,
ms.name module_name,
us.type user_type
FROM
public.users us
INNER JOIN public.school_users scu
ON
us.id=scu.user_id
INNER JOIN public.schools sc
ON 
scu.school_id=sc.id 
INNER JOIN public.modules ms
ON
sc.id= ms.school_id
WHERE us.type='student'
ORDER BY ms.name;


--no of students by school
SELECT
sc.name,
 COUNT (sc.id) student_count
FROM public.schools sc
INNER JOIN public.school_users scu
ON sc.id=scu.school_id
INNER JOIN public.users us
ON scu.user_id=us.id
WHERE us.type='student'
GROUP BY sc.name
ORDER BY 
sc.name;

-- module attendance by school
SELECT
sc.name,
md.name,
COUNT (md.id) attended_count
FROM  public.modules md
INNER JOIN public.schools sc
ON md.school_id=sc.id
INNER JOIN public.events ev
ON ev.module_id=md.id
INNER JOIN public.sessions ss
ON ev.id= ss.event_id
INNER JOIN public.attendance ad
ON ad.session_id=ss.id
WHERE ad.mark='attended'
AND sc.id=1
GROUP BY
md.name,
sc.name
ORDER BY md.name ;

--mart count by attended and not_attended
SELECT   
sc.name,
md.name,
ad.mark,

 COUNT(ad.mark) attendance_count,
    CASE 
        WHEN ad.mark= 'attended' THEN 'present'
        WHEN ad.mark='not_attended' THEN 'absent'
    END 
   
FROM    
    public.attendance ad
 INNER JOIN public.sessions ss
ON ad.session_id=ss.id
INNER JOIN public.events ev
ON ev.id= ss.event_id
INNER JOIN public.modules md
ON md.id= ev.module_id
INNER JOIN public.schools sc
ON md.school_id= sc.id
WHERE 
    md.id = 1
GROUP BY 
    ad.mark,
	md.name,
	sc.name;




SELECT
dp.id department_id,
dp.name department_name,
ss.id session_id,
ev.id events_id,
us.type user_type,
 COUNT (dp.id) user_count
FROM public.department dp
INNER JOIN public.department_users dpu
ON dp.id=dpu.department_id
INNER JOIN public.department_modules dpm
ON dp.id=dpm.department_id
INNER JOIN public.users us
ON dpu.user_id=us.id
INNER JOIN public.events ev
ON dpm.module_id=ev.module_id
INNER JOIN public.sessions ss
ON ss.event_id=ev.id

WHERE us.type='student'
AND dp.id=1
GROUP BY 
dp.id,
dp.name,
us.type,
ss.id,
ev.id
ORDER BY 
ss.id




SELECT
dp.id department_id,
dp.name department_name,
ss.id session_id,
ev.id events_id,
us.id user_id,
us.type user_type,
at.mark,
 COUNT (dp.id) user_count
FROM public.department dp
INNER JOIN public.department_users dpu
ON dp.id=dpu.department_id
INNER JOIN public.department_modules dpm
ON dp.id=dpm.department_id
INNER JOIN public.users us
ON dpu.user_id=us.id
INNER JOIN public.events ev
ON dpm.module_id=ev.module_id
INNER JOIN public.sessions ss
ON ss.event_id=ev.id
INNER JOIN public.attendance at
ON at.session_id=ss.id
WHERE us.type='student'
AND dp.id=2
AND at.user_id IN ( dpu.user_id)
GROUP BY 
dp.id,
dp.name,
us.type,
ss.id,
us.id ,
ev.id,
at.mark
ORDER BY 
ss.id



SELECT
dp.id department_id,
dp.name department_name,
ss.id session_id,
ev.id events_id,
dpm.type,
us.id user_id,
us.type user_type,
at.mark

FROM public.department dp
INNER JOIN public.department_users dpu
ON dp.id=dpu.department_id
INNER JOIN public.department_modules dpm
ON dp.id=dpm.department_id
INNER JOIN public.users us
ON dpu.user_id=us.id
INNER JOIN public.events ev
ON dpm.module_id=ev.module_id
INNER JOIN public.sessions ss
ON ss.event_id=ev.id
INNER JOIN public.attendance at
ON at.session_id=ss.id
WHERE us.type='student'
AND dp.id=1
AND at.user_id IN ( dpu.user_id)
GROUP BY 
dp.id,
dp.name,
us.type,
dpm.type,
ss.id,
us.id ,
ev.id,
at.mark
ORDER BY 
ss.id



SELECT
dp.id department_id,
dp.name department_name,
md.name module_name,
dpm.type type,
ad.id attendance_id,
us.id user_id,
us.type user_type,
ad.mark
   
FROM public.department dp
INNER JOIN public.department_users dpu
ON dp.id=dpu.department_id
INNER JOIN public.department_modules dpm
ON dp.id=dpm.department_id
INNER JOIN public.modules md
ON md.id=dpm.module_id
INNER JOIN public.users us
ON dpu.user_id=us.id
INNER JOIN public.events ev
ON dpm.module_id=ev.module_id
INNER JOIN public.sessions ss
ON ss.event_id=ev.id
INNER JOIN public.attendance ad
ON ad.session_id=ss.id
WHERE us.id=31

AND ad.user_id IN ( dpu.user_id)
GROUP BY 
dp.id,
ad.id,
dp.name,
md.name ,
dpm.type,
us.type,
us.id ,
ad.mark

ORDER BY md.name



SELECT
us.name user_name,
md.name module_name,
dpm.type module_type
,
 SUM(CASE 
       WHEN ad.mark= 'attended' AND dpm.type='corequisite'  THEN 10 ELSE 0 END) AS  corequisite_modules,
   SUM( CASE   WHEN ad.mark='attended' AND dpm.type='elective' THEN 10 ELSE 0 END)  AS elective_modules
 
FROM public.department dp
INNER JOIN public.department_users dpu
ON dp.id=dpu.department_id
INNER JOIN public.department_modules dpm
ON dp.id=dpm.department_id
INNER JOIN public.modules md
ON md.id=dpm.module_id
INNER JOIN public.users us
ON dpu.user_id=us.id
INNER JOIN public.events ev
ON dpm.module_id=ev.module_id
INNER JOIN public.sessions ss
ON ss.event_id=ev.id
INNER JOIN public.attendance ad
ON ad.session_id=ss.id
WHERE us.id=28
AND us.type='student'
AND ad.user_id IN ( dpu.user_id)
GROUP BY 

md.name,
us.name ,
dpm.type



































































































