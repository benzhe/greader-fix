.class public final Lrp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Lcom/google/android/gms/ads/internal/util/zzf;

.field public final d:Lcq0;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzf;Lcq0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lrp0;->e:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lrp0;->b:Landroid/content/SharedPreferences;

    .line 4
    iput-object p2, p0, Lrp0;->c:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 5
    iput-object p1, p0, Lrp0;->a:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lrp0;->d:Lcq0;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "IABTCF_PurposeConsents"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "IABTCF_PurposeConsents"

    const-string v0, ""

    .line 2
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p2, p0, Lrp0;->e:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 5
    iput-object p1, p0, Lrp0;->e:Ljava/lang/String;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-eq p1, v0, :cond_2

    const/4 p2, 0x1

    .line 7
    :cond_2
    sget-object p1, Ly40;->l0:Lo40;

    .line 8
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 9
    invoke-virtual {v0, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lrp0;->c:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzau(Z)V

    .line 12
    sget-object p1, Ly40;->M3:Lo40;

    .line 13
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 14
    invoke-virtual {v0, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p1, p0, Lrp0;->a:Landroid/content/Context;

    if-eqz p1, :cond_3

    const-string p2, "OfflineUpload.db"

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 17
    :cond_3
    sget-object p1, Ly40;->h0:Lo40;

    .line 18
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 19
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lrp0;->d:Lcq0;

    .line 21
    iget-object p1, p1, Lcq0;->l:Ljava/lang/Object;

    monitor-enter p1

    .line 22
    :try_start_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 23
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_4
    :goto_0
    return-void
.end method
