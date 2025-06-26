.class public final Lhg7;
.super Lrb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhg7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrb7<",
        "TT;>;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final e:Llb7;


# direct methods
.method public constructor <init>(Llb7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrb7;-><init>()V

    .line 2
    iput-object p1, p0, Lhg7;->e:Llb7;

    return-void
.end method


# virtual methods
.method public m(Ltb7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhg7;->e:Llb7;

    new-instance v1, Lhg7$a;

    invoke-direct {v1, p1}, Lhg7$a;-><init>(Ltb7;)V

    invoke-interface {v0, v1}, Llb7;->a(Ljb7;)V

    return-void
.end method
