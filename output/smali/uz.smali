.class public final Luz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ltz;


# direct methods
.method public constructor <init>(Ltz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luz;->e:Ltz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Luz;->e:Ltz;

    .line 2
    iget-object v0, v0, Ltz;->k:Lwz;

    .line 3
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    check-cast v0, Lzy$c;

    invoke-virtual {v0, v1}, Lzy$c;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
