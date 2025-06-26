.class public final synthetic Lmv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmv6;->e:Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lmv6;->e:Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
