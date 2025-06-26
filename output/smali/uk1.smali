.class public final Luk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj70;


# instance fields
.field public final synthetic a:Lxl1;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Ltk1;


# direct methods
.method public constructor <init>(Ltk1;Lxl1;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luk1;->c:Ltk1;

    iput-object p2, p0, Luk1;->a:Lxl1;

    iput-object p3, p0, Luk1;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Luk1;->a:Lxl1;

    invoke-interface {v0}, Lxl1;->Z()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final a0()V
    .locals 6

    .line 1
    iget-object v0, p0, Luk1;->a:Lxl1;

    sget-object v1, Lrk1;->s:[Ljava/lang/String;

    .line 2
    invoke-interface {v0}, Lxl1;->z4()Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 4
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 5
    iget-object v0, p0, Luk1;->a:Lxl1;

    iget-object v1, p0, Luk1;->b:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final b0(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Luk1;->a:Lxl1;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method
