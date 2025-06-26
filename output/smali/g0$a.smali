.class public Lg0$a;
.super Loa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg0;


# direct methods
.method public constructor <init>(Lg0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg0$a;->a:Lg0;

    invoke-direct {p0}, Loa;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lg0$a;->a:Lg0;

    iget-object p1, p1, Lg0;->e:Ld0;

    iget-object p1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lg0$a;->a:Lg0;

    iget-object p1, p1, Lg0;->e:Ld0;

    iget-object p1, p1, Ld0;->v:Lma;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lma;->d(Lna;)Lma;

    .line 3
    iget-object p1, p0, Lg0$a;->a:Lg0;

    iget-object p1, p1, Lg0;->e:Ld0;

    iput-object v0, p1, Ld0;->v:Lma;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lg0$a;->a:Lg0;

    iget-object p1, p1, Lg0;->e:Ld0;

    iget-object p1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
