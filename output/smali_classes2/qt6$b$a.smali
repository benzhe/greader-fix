.class public Lqt6$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqt6$b;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lqt6$b;


# direct methods
.method public constructor <init>(Lqt6$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqt6$b$a;->e:Lqt6$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lqt6$b$a;->e:Lqt6$b;

    iget-object p1, p1, Lqt6$b;->b:Lqt6;

    .line 2
    sget-object v0, Lqt6;->f:[Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lqt6$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lqt6$c;-><init>(Lqt6;Lqt6$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
