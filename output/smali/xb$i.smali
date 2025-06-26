.class public Lxb$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxb$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Lxb;


# direct methods
.method public constructor <init>(Lxb;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxb$i;->c:Lxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Lxb$i;->a:I

    .line 3
    iput p4, p0, Lxb$i;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lqb;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxb$i;->c:Lxb;

    iget-object v0, v0, Lxb;->w:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget v1, p0, Lxb$i;->a:I

    if-gez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lwb;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lwb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lxb$i;->c:Lxb;

    const/4 v3, 0x0

    iget v4, p0, Lxb$i;->a:I

    iget v5, p0, Lxb$i;->b:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lxb;->l0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
