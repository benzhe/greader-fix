.class public Ldx6$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldx6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ldx6;


# direct methods
.method public constructor <init>(Ldx6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldx6$c;->e:Ldx6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Ldx6$c;->e:Ldx6;

    .line 2
    iget-object p1, p1, Ldx6;->f:Landroid/widget/ListView;

    .line 3
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of p1, p1, Landroid/preference/Preference;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Ldx6$c;->e:Ldx6;

    .line 6
    iget-object p1, p1, Ldx6;->f:Landroid/widget/ListView;

    .line 7
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    :cond_0
    return p2
.end method
