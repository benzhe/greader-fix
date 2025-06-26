.class public final Lfy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzas;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lky4;


# direct methods
.method public constructor <init>(Lky4;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfy4;->g:Lky4;

    iput-object p2, p0, Lfy4;->e:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lfy4;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lfy4;->g:Lky4;

    .line 1
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->l()V

    iget-object v0, p0, Lfy4;->g:Lky4;

    .line 3
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 4
    invoke-virtual {v0}, Lj25;->P()Lyz4;

    move-result-object v0

    invoke-virtual {v0}, Lly4;->d()V

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
