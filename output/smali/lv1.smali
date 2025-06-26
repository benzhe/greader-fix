.class public final Llv1;
.super Lkm0;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lmv1;


# direct methods
.method public constructor <init>(Lmv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llv1;->e:Lmv1;

    invoke-direct {p0}, Lkm0;-><init>()V

    return-void
.end method


# virtual methods
.method public final A0(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llv1;->e:Lmv1;

    iget-object v0, v0, Lmv1;->a:Lxs0;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g3(Lcom/google/android/gms/ads/internal/util/zzaq;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llv1;->e:Lmv1;

    iget-object v0, v0, Lmv1;->a:Lxs0;

    .line 2
    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzap;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/zzaq;->zzacu:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/ads/internal/util/zzaq;->errorCode:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzap;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v0, v1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method
