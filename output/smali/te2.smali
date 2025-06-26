.class public final synthetic Lte2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# instance fields
.field public final a:Lse2;


# direct methods
.method public constructor <init>(Lse2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lte2;->a:Lse2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lte2;->a:Lse2;

    check-cast p1, Ljava/lang/Exception;

    .line 1
    iget-object v0, v0, Lse2;->d:Lor0;

    .line 2
    iget-object v1, v0, Lor0;->e:Landroid/content/Context;

    iget-object v0, v0, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v1, v0}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v0

    const-string v1, "AttestationTokenSignal"

    .line 3
    invoke-interface {v0, p1, v1}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
