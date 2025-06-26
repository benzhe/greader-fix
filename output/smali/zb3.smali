.class public final Lzb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lxb3;


# direct methods
.method public constructor <init>(Lxb3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzb3;->e:Lxb3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzb3;->e:Lxb3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v1, v0, Lxb3;->f:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lxb3;->i:Z

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v2, v0, Lxb3;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    .line 6
    iput-object v1, v0, Lxb3;->f:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_0
    .catch Lhy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Liy; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lxb3;->f:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    :cond_0
    :goto_0
    return-void
.end method
