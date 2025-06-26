.class public Li00$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Li00;


# direct methods
.method public constructor <init>(Li00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li00$d;->a:Li00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Li00$d;->a:Li00;

    const/4 v0, 0x0

    invoke-virtual {p1}, Li00;->d()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Li00;->getRemoteService(Lq00;Ljava/util/Set;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Li00$d;->a:Li00;

    .line 4
    iget-object v0, v0, Li00;->v:Li00$b;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Li00$b;->g0(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1
    return-void
.end method
