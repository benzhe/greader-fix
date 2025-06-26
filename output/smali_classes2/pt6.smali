.class public Lpt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpt6;->a:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lpt6;->a:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->articlesCheck:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->imagesCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->completeCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->articlesCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 6
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->imagesCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 7
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->completeCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->articlesCheck:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->imagesCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 10
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->articlesCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 11
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->imagesCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 12
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->completeCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_0
    return-void
.end method
