.class public final synthetic Ljw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liw1;


# instance fields
.field public final a:Lbw1;


# direct methods
.method public constructor <init>(Lbw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljw1;->a:Lbw1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)Law2;
    .locals 1

    iget-object v0, p0, Ljw1;->a:Lbw1;

    .line 1
    iget-object v0, v0, Lbw1;->c:Lxa3;

    invoke-interface {v0}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmw1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauj;->n:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lmw1;->c7(Ljava/lang/String;)Law2;

    move-result-object p1

    return-object p1
.end method
