.class public final synthetic Lbr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic e:Lbr6;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbr6;

    invoke-direct {v0}, Lbr6;-><init>()V

    sput-object v0, Lbr6;->e:Lbr6;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->g:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Ln56;->Z1(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
