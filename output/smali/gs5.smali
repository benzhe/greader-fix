.class public final Lgs5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZLln5;Lln5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lln5<",
            "Lbu5;",
            ">;",
            "Lln5<",
            "Lbu5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lgs5;->a:I

    .line 3
    iput-boolean p2, p0, Lgs5;->b:Z

    .line 4
    iput-object p3, p0, Lgs5;->c:Lln5;

    .line 5
    iput-object p4, p0, Lgs5;->d:Lln5;

    return-void
.end method
