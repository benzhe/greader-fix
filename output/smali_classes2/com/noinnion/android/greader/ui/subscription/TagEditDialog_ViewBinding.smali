.class public Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    .line 3
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090203

    const-string v2, "field \'mNameText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mNameText:Landroid/widget/EditText;

    .line 4
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0902e9

    const-string v2, "field \'mExcludeCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mExcludeCheck:Landroid/widget/CheckBox;

    .line 5
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f09013d

    const-string v2, "field \'mHideCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mHideCheck:Landroid/widget/CheckBox;

    .line 6
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090217

    const-string v2, "field \'mNotificationCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mNotificationCheck:Landroid/widget/CheckBox;

    .line 7
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090158

    const-string v2, "field \'mImageFitCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mImageFitCheck:Landroid/widget/CheckBox;

    .line 8
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f09016f

    const-string v2, "field \'mJavascriptCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mJavascriptCheck:Landroid/widget/CheckBox;

    const v0, 0x7f0902d6

    const-string v1, "field \'mSubPreferences\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mSubPreferences:Landroid/view/View;

    const v0, 0x7f0902f7

    const-string v1, "field \'mTagPreferences\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mTagPreferences:Landroid/view/View;

    const v0, 0x7f09021a

    const-string v1, "method \'changeNotification\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->b:Landroid/view/View;

    .line 13
    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090159

    const-string v1, "method \'changeImageFit\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->c:Landroid/view/View;

    .line 16
    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090170

    const-string v1, "method \'changeJavascript\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->d:Landroid/view/View;

    .line 19
    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090227

    const-string v1, "method \'changeOfflineFormat\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->e:Landroid/view/View;

    .line 22
    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$d;-><init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e5

    const-string v1, "method \'changeDisplayLoading\'"

    .line 23
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->f:Landroid/view/View;

    .line 25
    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$e;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$e;-><init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09018c

    const-string v1, "method \'changeLoadLink\'"

    .line 26
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->g:Landroid/view/View;

    .line 28
    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$f;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$f;-><init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090261

    const-string v1, "method \'changeReadingMode\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->h:Landroid/view/View;

    .line 31
    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$g;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$g;-><init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090346

    const-string v1, "method \'changeUserAgent\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->i:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding$h;-><init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mNameText:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mExcludeCheck:Landroid/widget/CheckBox;

    .line 5
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mHideCheck:Landroid/widget/CheckBox;

    .line 6
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mNotificationCheck:Landroid/widget/CheckBox;

    .line 7
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mImageFitCheck:Landroid/widget/CheckBox;

    .line 8
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mJavascriptCheck:Landroid/widget/CheckBox;

    .line 9
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mSubPreferences:Landroid/view/View;

    .line 10
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mTagPreferences:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->b:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->c:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->d:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->e:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->f:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->g:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->h:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog_ViewBinding;->i:Landroid/view/View;

    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
