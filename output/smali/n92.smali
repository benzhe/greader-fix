.class public final synthetic Ln92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lo92;


# direct methods
.method public constructor <init>(Lo92;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln92;->e:Lo92;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ln92;->e:Lo92;

    .line 1
    new-instance v1, Ll92;

    iget-object v2, v0, Lo92;->b:Lll2;

    iget-object v2, v2, Lll2;->j:Lcom/google/android/gms/internal/ads/zzwc;

    iget-object v0, v0, Lo92;->c:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-direct {v1, v2, v0}, Ll92;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzbar;)V

    return-object v1
.end method
