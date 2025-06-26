.class public Lmz5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Llz5;


# direct methods
.method public constructor <init>(Llz5;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmz5;->f:Llz5;

    iput-object p2, p0, Lmz5;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmz5;->f:Llz5;

    .line 2
    iget-object p1, p1, Llz5;->o:Luy5;

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Luy5$a;->g:Luy5$a;

    check-cast p1, Lj36;

    invoke-virtual {p1, v0}, Lj36;->e(Luy5$a;)Le45;

    .line 4
    :cond_0
    iget-object p1, p0, Lmz5;->f:Llz5;

    iget-object v0, p0, Lmz5;->e:Landroid/app/Activity;

    invoke-static {p1, v0}, Llz5;->a(Llz5;Landroid/app/Activity;)V

    return-void
.end method
