.class public Ll85;
.super Lj1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lj1;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Ll1;

    .line 2
    new-instance p2, Ln85;

    .line 3
    iget-object p3, p0, Lj1;->a:Landroid/content/Context;

    .line 4
    invoke-direct {p2, p3, p0, p1}, Ln85;-><init>(Landroid/content/Context;Ll85;Ll1;)V

    .line 5
    iput-object p2, p1, Ll1;->o:Lu1;

    .line 6
    iget-object p1, p1, Ll1;->e:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p2, p1}, Lu1;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p2
.end method
