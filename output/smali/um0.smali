.class public final Lum0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:Z

.field public a:I

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:I

.field public m:D

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Z

.field public final u:Z

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:F

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Lum0;->b(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0, p1}, Lum0;->c(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0, p1}, Lum0;->d(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "geo:0,0?q=donuts"

    .line 7
    invoke-static {v0, v2}, Lum0;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lum0;->q:Z

    const-string v2, "http://www.google.com"

    .line 8
    invoke-static {v0, v2}, Lum0;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lum0;->r:Z

    .line 9
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lum0;->s:Ljava/lang/String;

    .line 10
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->a:Lzr0;

    .line 11
    invoke-static {}, Lzr0;->e()Z

    move-result v2

    iput-boolean v2, p0, Lum0;->t:Z

    .line 12
    invoke-static {p1}, Lbi;->N(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lum0;->u:Z

    .line 13
    invoke-static {p1}, Lbi;->u0(Landroid/content/Context;)Z

    move-result v2

    .line 14
    iput-boolean v2, p0, Lum0;->v:Z

    .line 15
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lum0;->w:Ljava/lang/String;

    const-string v1, "market://details?id=com.google.android.gms.ads"

    .line 16
    invoke-static {v0, v1}, Lum0;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const-string v1, "."

    const/4 v2, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_3

    goto :goto_2

    .line 18
    :cond_3
    :try_start_0
    invoke-static {p1}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object v3

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lh20;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 19
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :cond_4
    :goto_2
    move-object v0, v2

    .line 20
    :goto_3
    iput-object v0, p0, Lum0;->x:Ljava/lang/String;

    .line 21
    :try_start_1
    invoke-static {p1}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object v0

    const-string v3, "com.android.vending"

    const/16 v4, 0x80

    .line 22
    iget-object v0, v0, Lh20;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 23
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    nop

    .line 24
    :cond_5
    :goto_4
    iput-object v2, p0, Lum0;->B:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 26
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 27
    :cond_7
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lum0;->y:F

    .line 28
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lum0;->z:I

    .line 29
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lum0;->A:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lrm0;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lum0;->b(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0, p1}, Lum0;->c(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p1}, Lum0;->d(Landroid/content/Context;)V

    .line 34
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lum0;->o:Ljava/lang/String;

    .line 35
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lum0;->p:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lw50;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lum0;->C:Z

    .line 37
    iget-boolean p1, p2, Lrm0;->a:Z

    iput-boolean p1, p0, Lum0;->q:Z

    .line 38
    iget-boolean p1, p2, Lrm0;->b:Z

    iput-boolean p1, p0, Lum0;->r:Z

    .line 39
    iget-object p1, p2, Lrm0;->c:Ljava/lang/String;

    iput-object p1, p0, Lum0;->s:Ljava/lang/String;

    .line 40
    iget-boolean p1, p2, Lrm0;->d:Z

    iput-boolean p1, p0, Lum0;->t:Z

    .line 41
    iget-boolean p1, p2, Lrm0;->e:Z

    iput-boolean p1, p0, Lum0;->u:Z

    .line 42
    iget-boolean p1, p2, Lrm0;->f:Z

    iput-boolean p1, p0, Lum0;->v:Z

    .line 43
    iget-object p1, p2, Lrm0;->g:Ljava/lang/String;

    iput-object p1, p0, Lum0;->w:Ljava/lang/String;

    .line 44
    iget-object p1, p2, Lrm0;->h:Ljava/lang/String;

    iput-object p1, p0, Lum0;->x:Ljava/lang/String;

    .line 45
    iget-object p1, p2, Lrm0;->i:Ljava/lang/String;

    iput-object p1, p0, Lum0;->B:Ljava/lang/String;

    .line 46
    iget p1, p2, Lrm0;->l:F

    iput p1, p0, Lum0;->y:F

    .line 47
    iget p1, p2, Lrm0;->m:I

    iput p1, p0, Lum0;->z:I

    .line 48
    iget p1, p2, Lrm0;->n:I

    iput p1, p0, Lum0;->A:I

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object p1

    .line 4
    iget-object v0, p1, Lor0;->e:Landroid/content/Context;

    iget-object p1, p1, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v0, p1}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object p1

    const-string v0, "DeviceInfo.getResolveInfo"

    .line 5
    invoke-interface {p1, p0, v0}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 3

    const-string v0, "audio"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    iput v1, p0, Lum0;->a:I

    .line 3
    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iput-boolean v1, p0, Lum0;->b:Z

    .line 4
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lum0;->c:Z

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lum0;->d:I

    .line 6
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lum0;->e:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lum0;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    .line 9
    iget-object v2, v1, Lor0;->e:Landroid/content/Context;

    iget-object v1, v1, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v2, v1}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v1

    const-string v2, "DeviceInfo.gatherAudioInfo"

    .line 10
    invoke-interface {v1, p1, v2}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p1, -0x2

    .line 11
    iput p1, p0, Lum0;->a:I

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lum0;->b:Z

    .line 13
    iput-boolean p1, p0, Lum0;->c:Z

    .line 14
    iput p1, p0, Lum0;->d:I

    .line 15
    iput v0, p0, Lum0;->e:I

    .line 16
    iput p1, p0, Lum0;->f:I

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 5

    const-string v0, "phone"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lum0;->g:Ljava/lang/String;

    .line 4
    invoke-static {}, Lbi;->K()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Ly40;->Z4:Lo40;

    .line 5
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v4, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    :goto_0
    iput v2, p0, Lum0;->i:I

    .line 9
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iput v0, p0, Lum0;->j:I

    const/4 v0, -0x2

    .line 10
    iput v0, p0, Lum0;->h:I

    .line 11
    iput-boolean v3, p0, Lum0;->k:Z

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lum0;->l:I

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 14
    invoke-static {p1, v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lum0;->h:I

    .line 17
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p1

    iput p1, p0, Lum0;->l:I

    goto :goto_1

    .line 18
    :cond_1
    iput v0, p0, Lum0;->h:I

    .line 19
    :goto_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p1

    iput-boolean p1, p0, Lum0;->k:Z

    :cond_2
    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    const-string v2, "status"

    .line 3
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    .line 4
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "scale"

    .line 5
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float v1, v3

    int-to-float p1, p1

    div-float/2addr v1, p1

    float-to-double v3, v1

    .line 6
    iput-wide v3, p0, Lum0;->m:D

    const/4 p1, 0x2

    if-eq v2, p1, :cond_0

    const/4 p1, 0x5

    if-ne v2, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 7
    :cond_1
    iput-boolean v0, p0, Lum0;->n:Z

    return-void

    :cond_2
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 8
    iput-wide v1, p0, Lum0;->m:D

    .line 9
    iput-boolean v0, p0, Lum0;->n:Z

    return-void
.end method

.method public final e()Lrm0;
    .locals 35

    move-object/from16 v0, p0

    .line 1
    new-instance v32, Lrm0;

    move-object/from16 v1, v32

    iget v2, v0, Lum0;->a:I

    iget-boolean v3, v0, Lum0;->q:Z

    iget-boolean v4, v0, Lum0;->r:Z

    iget-object v5, v0, Lum0;->g:Ljava/lang/String;

    iget-object v6, v0, Lum0;->s:Ljava/lang/String;

    iget-boolean v7, v0, Lum0;->t:Z

    iget-boolean v8, v0, Lum0;->u:Z

    iget-boolean v9, v0, Lum0;->v:Z

    iget-boolean v10, v0, Lum0;->b:Z

    iget-boolean v11, v0, Lum0;->c:Z

    iget-object v12, v0, Lum0;->w:Ljava/lang/String;

    iget-object v13, v0, Lum0;->x:Ljava/lang/String;

    iget-object v14, v0, Lum0;->B:Ljava/lang/String;

    iget v15, v0, Lum0;->d:I

    move-object/from16 v33, v1

    iget v1, v0, Lum0;->h:I

    move/from16 v16, v1

    iget v1, v0, Lum0;->i:I

    move/from16 v17, v1

    iget v1, v0, Lum0;->j:I

    move/from16 v18, v1

    iget v1, v0, Lum0;->e:I

    move/from16 v19, v1

    iget v1, v0, Lum0;->f:I

    move/from16 v20, v1

    iget v1, v0, Lum0;->y:F

    move/from16 v21, v1

    iget v1, v0, Lum0;->z:I

    move/from16 v22, v1

    iget v1, v0, Lum0;->A:I

    move/from16 v23, v1

    move/from16 v34, v2

    iget-wide v1, v0, Lum0;->m:D

    move-wide/from16 v24, v1

    iget-boolean v1, v0, Lum0;->n:Z

    move/from16 v26, v1

    iget-boolean v1, v0, Lum0;->k:Z

    move/from16 v27, v1

    iget v1, v0, Lum0;->l:I

    move/from16 v28, v1

    iget-object v1, v0, Lum0;->o:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-boolean v1, v0, Lum0;->C:Z

    move/from16 v30, v1

    iget-object v1, v0, Lum0;->p:Ljava/lang/String;

    move-object/from16 v31, v1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct/range {v1 .. v31}, Lrm0;-><init>(IZZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIFIIDZZILjava/lang/String;ZLjava/lang/String;)V

    return-object v32
.end method
