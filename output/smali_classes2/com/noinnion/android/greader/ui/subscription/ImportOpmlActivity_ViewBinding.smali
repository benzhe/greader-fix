.class public Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    .line 3
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090322

    const-string v2, "field \'vToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;->vToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09015f

    const-string v2, "field \'vInputText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;->vInputText:Landroid/widget/EditText;

    const v0, 0x7f090099

    const-string v1, "method \'cancel\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;->b:Landroid/view/View;

    .line 7
    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09022a

    const-string v1, "method \'save\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090112

    const-string v1, "method \'filePicker\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;->d:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;->vToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;->vInputText:Landroid/widget/EditText;

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;->b:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;->c:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
