## DEFINITIONS

<div dir="rtl">
DOCKER     : هي منصة مفتوحة المصدر تستخدم لتطوير, شحن و تشغيل التطبيقات داخل ما يسمى بالحاويات خفيفة و معزولة   
</div>
<div dir="rtl">
CONTAINERS : هي بيئة معزولة و خفيفة الوزن أسرع و أقل إستهلاكا للموارد من الألات الإفتراضية VMs 
</div>
<div dir="rtl">
KUBERNETES        : هو نظام لادارة الحاويات 
  
  > تشغيل عدة حاويات
> إعادة تشغيل إذا توقفت
> توزيع الحمل
> إدارة الشبكات و التخزين
</div>
<div dir="rtl">
VMs        : هو تمثيل إفتراضي أو إن صحة التعبير محاكات إفتراضية لجهاز كمبيوتر فعلي يستخدم بدلا من الاجهزة لتشغيل البرامج 
</div>

## DOCKER COMPONENTS

| المكون | الوصف |
|------|------|
| **DOCKER HUB** | مستودع سحابي للبحث عن صور الحاويات ومشاركتها |
| **DOCKER COMPOSE** | أداة لتشغيل تطبيقات متعددة الحاويات باستخدام YAML |
| **DOCKER DESKTOP** | تطبيق سطح المكتب لإدارة الحاويات بسهولة |
| **DOCKER ENGINE** | المحرك الأساسي لتشغيل الحاويات |

## ENVIRONMENT


| المكون | الوصف |
|------|------|
| **VSCODE** | محرر النصوص يستخدم لكتابة الأكواد |
| **DOCKER COMPOSE** | أداة لتشغيل تطبيقات متعددة الحاويات باستخدام YAML |
| **DOCKER DESKTOP** | تطبيق سطح المكتب لإدارة الحاويات بسهولة |
| **WEB** | الملف الذي تريد عرضه ب docker |


## INSTRUCTIONS


| التعليمات | الوصف |
|------|------|
| **docker ps** | الحاويات الشغالة |
| **docker-compose up -d** | رفع الملفات |
| **docker-compose up --build -d** | إعادة تشغيل الحاوية |
| **docker-compose up** | رفع و تهيئة الملفات |
| **docker-compose down** | إيقاف الحاوية و حذفها و حذف الشبكة الخاصة بالمشروع |

# EXSEMPLER

docker ps

~~~~
C:\Users\User\test_docker>docker ps
CONTAINER ID   IMAGE           COMMAND                  STATUS          PORTS                  NAMES
a1b2c3d4e5f6   php:8.2-apache  "docker-php-entrypoi…"   Up 2 minutes    0.0.0.0:8080->80/tcp   my_web
~~~~


