.class public final Llp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Llp3$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lll2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lll2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llp1;->a:Lmb3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Llp1;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lll2;

    .line 2
    iget-object v0, v0, Lll2;->o:Lxk2;

    iget v0, v0, Lxk2;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Llp3$a;->q:Llp3$a;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Llp3$a;->m:Llp3$a;

    :goto_0
    return-object v0
.end method
