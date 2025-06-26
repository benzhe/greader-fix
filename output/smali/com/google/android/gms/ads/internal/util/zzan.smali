.class public final Lcom/google/android/gms/ads/internal/util/zzan;
.super Lim0;
.source "SourceFile"


# instance fields
.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltj0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lim0;-><init>(Ltj0;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzan;->c:Landroid/content/Context;

    return-void
.end method

.method public static zzbl(Landroid/content/Context;)Lb80;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzan;

    new-instance v1, Lpu0;

    invoke-direct {v1}, Lpu0;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/util/zzan;-><init>(Landroid/content/Context;Ltj0;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "admob_volley"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lb80;

    new-instance v2, Ldn0;

    invoke-direct {v2, v1}, Ldn0;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2, v0}, Lb80;-><init>(Lhg3;Lfp3;)V

    .line 4
    invoke-virtual {p0}, Lb80;->a()V

    return-object p0
.end method


# virtual methods
.method public final zza(Lj40;)Lpu3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj40<",
            "*>;)",
            "Lpu3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Luh0;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lj40;->zzh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lj40;->getMethod()I

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lj40;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Ly40;->u2:Lo40;

    .line 5
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->a:Lzr0;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzan;->c:Landroid/content/Context;

    const v1, 0xcc77c0

    .line 11
    invoke-static {v0, v1}, Lzr0;->n(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    new-instance v0, Lic0;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzan;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lic0;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v0, p1}, Lic0;->zza(Lj40;)Lpu3;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Got gmscore asset response: "

    .line 14
    invoke-virtual {p1}, Lj40;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "Failed to get gmscore asset response: "

    .line 15
    invoke-virtual {p1}, Lj40;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-super {p0, p1}, Lim0;->zza(Lj40;)Lpu3;

    move-result-object p1

    return-object p1
.end method
