.class public Lcom/noinnion/android/greader/ui/subscription/SubEditDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09010f

    const-string v2, "field \'feedUrlText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->feedUrlText:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090203

    const-string v2, "field \'nameText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->nameText:Landroid/widget/EditText;

    .line 5
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0902e9

    const-string v2, "field \'excludeCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->excludeCheck:Landroid/widget/CheckBox;

    .line 6
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f09013d

    const-string v2, "field \'hideCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->hideCheck:Landroid/widget/CheckBox;

    .line 7
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090217

    const-string v2, "field \'notificationCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->notificationCheck:Landroid/widget/CheckBox;

    .line 8
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090158

    const-string v2, "field \'imageFitCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->imageFitCheck:Landroid/widget/CheckBox;

    .line 9
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f09016f

    const-string v2, "field \'javascriptCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->javascriptCheck:Landroid/widget/CheckBox;

    .line 10
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f090228

    const-string v2, "field \'offlineSpinner\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->offlineSpinner:Landroid/widget/Spinner;

    .line 11
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0900e6

    const-string v2, "field \'displaySpinner\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->displaySpinner:Landroid/widget/Spinner;

    .line 12
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f09018d

    const-string v2, "field \'loadLinkSpinner\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->loadLinkSpinner:Landroid/widget/Spinner;

    .line 13
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f090262

    const-string v2, "field \'readingModeSpinner\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->readingModeSpinner:Landroid/widget/Spinner;

    .line 14
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f090347

    const-string v2, "field \'userAgentSpinner\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->userAgentSpinner:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->feedUrlText:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->nameText:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->excludeCheck:Landroid/widget/CheckBox;

    .line 6
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->hideCheck:Landroid/widget/CheckBox;

    .line 7
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->notificationCheck:Landroid/widget/CheckBox;

    .line 8
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->imageFitCheck:Landroid/widget/CheckBox;

    .line 9
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->javascriptCheck:Landroid/widget/CheckBox;

    .line 10
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->offlineSpinner:Landroid/widget/Spinner;

    .line 11
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->displaySpinner:Landroid/widget/Spinner;

    .line 12
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->loadLinkSpinner:Landroid/widget/Spinner;

    .line 13
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->readingModeSpinner:Landroid/widget/Spinner;

    .line 14
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->userAgentSpinner:Landroid/widget/Spinner;

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
