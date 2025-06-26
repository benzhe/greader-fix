.class public final Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 3
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090322

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f09024d

    const-string v1, "field \'mPremiumUpgrade\' and method \'premiumUpgrade\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 5
    iput-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mPremiumUpgrade:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->b:Landroid/view/View;

    .line 7
    new-instance v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$c;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090186

    const-string v1, "field \'mListView\' and method \'onItemClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/ListView;

    const-string v3, "field \'mListView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mListView:Landroid/widget/ListView;

    .line 10
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->c:Landroid/view/View;

    .line 11
    check-cast v1, Landroid/widget/AdapterView;

    new-instance v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$d;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0900fd

    const-string v1, "field \'mEmptyView\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mEmptyView:Landroid/view/View;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09016a

    const-string v2, "field \'mTitleText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mTitleText:Landroid/widget/TextView;

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090177

    const-string v2, "field \'mLanguageText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mLanguageText:Landroid/widget/TextView;

    const v0, 0x7f090240

    const-string v1, "field \'mPlayButton\' and method \'playClick\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mPlayButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mPlayButton:Landroid/widget/ImageView;

    .line 17
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->d:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$e;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090176

    const-string v1, "method \'showLanguageList\'"

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->e:Landroid/view/View;

    .line 21
    new-instance v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$f;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$f;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090243

    const-string v1, "method \'showPlayListDialog\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->f:Landroid/view/View;

    .line 24
    new-instance v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$g;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$g;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09026d

    const-string v1, "method \'rewindClick\'"

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->g:Landroid/view/View;

    .line 27
    new-instance v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$h;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$h;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090124

    const-string v1, "method \'forwardClick\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->h:Landroid/view/View;

    .line 30
    new-instance v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$i;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$i;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09024e

    const-string v1, "method \'previousClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->i:Landroid/view/View;

    .line 33
    new-instance v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$j;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$j;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090210

    const-string v1, "method \'nextClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->j:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$k;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$k;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902d3

    const-string v1, "method \'stopClick\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->k:Landroid/view/View;

    .line 39
    new-instance v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$a;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090099

    const-string v1, "method \'cancelClick\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->l:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$b;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mPremiumUpgrade:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mListView:Landroid/widget/ListView;

    .line 6
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mEmptyView:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mTitleText:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mLanguageText:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mPlayButton:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->b:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->c:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->d:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->e:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->f:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->g:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->h:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->i:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->j:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->k:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;->l:Landroid/view/View;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
