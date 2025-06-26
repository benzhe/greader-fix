.class public final Li00$l;
.super Li00$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li00$f;"
    }
.end annotation


# instance fields
.field public final synthetic g:Li00;


# direct methods
.method public constructor <init>(Li00;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Li00$l;->g:Li00;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Li00$f;-><init>(Li00;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li00$l;->g:Li00;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Li00$l;->g:Li00;

    iget-object v0, v0, Li00;->p:Li00$c;

    invoke-interface {v0, p1}, Li00$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 3
    iget-object v0, p0, Li00$l;->g:Li00;

    invoke-virtual {v0, p1}, Li00;->h(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li00$l;->g:Li00;

    iget-object v0, v0, Li00;->p:Li00$c;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->i:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Li00$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
