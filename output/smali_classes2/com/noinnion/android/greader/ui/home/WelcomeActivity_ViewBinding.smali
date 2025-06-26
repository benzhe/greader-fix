.class public Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/WelcomeActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;->a:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;

    .line 3
    const-class v0, Landroid/widget/ListView;

    const v1, 0x7f090352

    const-string v2, "field \'vListView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;->vListView:Landroid/widget/ListView;

    const v0, 0x7f09025e

    const-string v1, "method \'onButtonClick\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;->b:Landroid/view/View;

    .line 6
    new-instance v2, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding$a;-><init>(Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;Lcom/noinnion/android/greader/ui/home/WelcomeActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090111

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;->c:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding$b;-><init>(Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;Lcom/noinnion/android/greader/ui/home/WelcomeActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;->a:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;->a:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;->vListView:Landroid/widget/ListView;

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;->b:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
