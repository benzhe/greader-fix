.class public final synthetic Ltp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltp6;->a:Lcom/noinnion/android/greader/ui/home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Ltp6;->a:Lcom/noinnion/android/greader/ui/home/HomeActivity;

    .line 1
    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->Q()V

    return-void
.end method
