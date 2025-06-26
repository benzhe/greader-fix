.class public Lcom/noinnion/android/greader/ui/setting/SendLogActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/SendLogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$b;->e:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$b;->e:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "-v"

    .line 5
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->C:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->B:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 9
    :cond_1
    new-instance v0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;-><init>(Lcom/noinnion/android/greader/ui/setting/SendLogActivity;Lcom/noinnion/android/greader/ui/setting/SendLogActivity$a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p2

    check-cast p2, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;

    iput-object p2, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->y:Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;

    return-void
.end method
