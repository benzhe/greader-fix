.class public Lof$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$a0;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$a0;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lof$b;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 3
    iput p2, p0, Lof$b;->b:I

    .line 4
    iput p3, p0, Lof$b;->c:I

    .line 5
    iput p4, p0, Lof$b;->d:I

    .line 6
    iput p5, p0, Lof$b;->e:I

    return-void
.end method
