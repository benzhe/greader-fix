.class public abstract Lf1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm4<",
            "Lu8;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm4<",
            "Lv8;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf1;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 3

    .line 1
    instance-of v0, p1, Lu8;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lu8;

    .line 3
    iget-object v1, p0, Lf1;->b:Lm4;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lm4;

    invoke-direct {v1}, Lm4;-><init>()V

    iput-object v1, p0, Lf1;->b:Lm4;

    .line 5
    :cond_0
    iget-object v1, p0, Lf1;->b:Lm4;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, p1, v2}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lm1;

    iget-object v1, p0, Lf1;->a:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lm1;-><init>(Landroid/content/Context;Lu8;)V

    .line 9
    iget-object v1, p0, Lf1;->b:Lm4;

    invoke-virtual {v1, v0, p1}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public final d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    .line 1
    instance-of v0, p1, Lv8;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lv8;

    .line 3
    iget-object v0, p0, Lf1;->c:Lm4;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lm4;

    invoke-direct {v0}, Lm4;-><init>()V

    iput-object v0, p0, Lf1;->c:Lm4;

    .line 5
    :cond_0
    iget-object v0, p0, Lf1;->c:Lm4;

    invoke-virtual {v0, p1}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lv1;

    iget-object v1, p0, Lf1;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lv1;-><init>(Landroid/content/Context;Lv8;)V

    .line 7
    iget-object v1, p0, Lf1;->c:Lm4;

    invoke-virtual {v1, p1, v0}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method
