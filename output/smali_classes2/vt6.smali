.class public final synthetic Lvt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvt6;->e:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    iput-wide p2, p0, Lvt6;->f:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lvt6;->e:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    iget-wide v0, p0, Lvt6;->f:J

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p2, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$d;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2}, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$d;-><init>(Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$a;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
