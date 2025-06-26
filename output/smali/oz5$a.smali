.class public Loz5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loz5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Loz5;


# direct methods
.method public constructor <init>(Loz5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loz5$a;->e:Loz5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 2
    iget-object p1, p0, Loz5$a;->e:Loz5;

    iget-object p1, p1, Loz5;->d:Llz5;

    .line 3
    iget-object p1, p1, Llz5;->o:Luy5;

    if-eqz p1, :cond_0

    .line 4
    sget-object p2, Luy5$a;->e:Luy5$a;

    check-cast p1, Lj36;

    invoke-virtual {p1, p2}, Lj36;->e(Luy5$a;)Le45;

    .line 5
    :cond_0
    iget-object p1, p0, Loz5$a;->e:Loz5;

    iget-object p2, p1, Loz5;->d:Llz5;

    iget-object p1, p1, Loz5;->b:Landroid/app/Activity;

    invoke-static {p2, p1}, Llz5;->a(Llz5;Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
