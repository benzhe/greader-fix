.class public Ldg$a;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ldg;


# direct methods
.method public constructor <init>(Ldg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldg$a;->b:Ldg;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ldg$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-boolean p1, p0, Ldg$a;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ldg$a;->a:Z

    .line 3
    iget-object p1, p0, Ldg$a;->b:Ldg;

    invoke-virtual {p1}, Ldg;->d()V

    :cond_0
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Ldg$a;->a:Z

    :cond_1
    return-void
.end method
