.class public Lqr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqr6;->e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lqr6;->e:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->finish()V

    return-void
.end method
