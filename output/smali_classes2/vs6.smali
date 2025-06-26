.class public final synthetic Lvs6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/setting/SendLogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvs6;->e:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lvs6;->e:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
