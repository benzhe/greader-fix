.class public Lws5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljn5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljn5<",
            "Lbu5;",
            "Lyt5;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljn5;Lln5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljn5<",
            "Lbu5;",
            "Lyt5;",
            ">;",
            "Lln5<",
            "Lbu5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lws5;->a:Ljn5;

    .line 3
    iput-object p2, p0, Lws5;->b:Lln5;

    return-void
.end method
