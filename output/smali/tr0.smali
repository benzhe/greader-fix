.class public final Ltr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:I

.field public e:J

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/google/android/gms/ads/internal/util/zzf;

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzf;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Ltr0;->a:J

    .line 3
    iput-wide v0, p0, Ltr0;->b:J

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Ltr0;->c:I

    .line 5
    iput v0, p0, Ltr0;->d:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Ltr0;->e:J

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltr0;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ltr0;->i:I

    .line 9
    iput v0, p0, Ltr0;->j:I

    .line 10
    iput-object p1, p0, Ltr0;->g:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Ltr0;->h:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 6

    .line 1
    invoke-static {p0}, Len0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Theme.Translucent"

    const-string v2, "style"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-static {v1}, Lis0;->zzey(Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 7
    :cond_1
    invoke-static {v1}, Lis0;->zzey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string p0, "Fail to fetch AdActivity theme"

    .line 8
    invoke-static {p0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 9
    invoke-static {v1}, Lis0;->zzey(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvq;J)V
    .locals 10

    .line 1
    iget-object v0, p0, Ltr0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ltr0;->h:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzh()J

    move-result-wide v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v3

    invoke-interface {v3}, Lb20;->a()J

    move-result-wide v3

    .line 4
    iget-wide v5, p0, Ltr0;->b:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    sub-long v1, v3, v1

    .line 5
    sget-object v5, Ly40;->C0:Lo40;

    .line 6
    sget-object v6, Los3;->j:Los3;

    iget-object v6, v6, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v6, v5}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v5

    .line 8
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Ltr0;->d:I

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Ltr0;->h:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzi()I

    move-result v1

    .line 11
    iput v1, p0, Ltr0;->d:I

    .line 12
    :goto_0
    iput-wide p2, p0, Ltr0;->b:J

    .line 13
    iput-wide p2, p0, Ltr0;->a:J

    goto :goto_1

    .line 14
    :cond_1
    iput-wide p2, p0, Ltr0;->a:J

    :goto_1
    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvq;->g:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string p3, "gw"

    const/4 v1, 0x2

    .line 16
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 17
    monitor-exit v0

    return-void

    .line 18
    :cond_2
    iget p1, p0, Ltr0;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Ltr0;->c:I

    .line 19
    iget p1, p0, Ltr0;->d:I

    add-int/2addr p1, p2

    iput p1, p0, Ltr0;->d:I

    if-nez p1, :cond_3

    const-wide/16 p1, 0x0

    .line 20
    iput-wide p1, p0, Ltr0;->e:J

    .line 21
    iget-object p1, p0, Ltr0;->h:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzf;->zzfb(J)V

    goto :goto_2

    .line 22
    :cond_3
    iget-object p1, p0, Ltr0;->h:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzj()J

    move-result-wide p1

    sub-long/2addr v3, p1

    iput-wide v3, p0, Ltr0;->e:J

    .line 23
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
