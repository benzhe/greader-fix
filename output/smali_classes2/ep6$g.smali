.class public Lep6$g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lep6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[J",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final synthetic c:Lep6;


# direct methods
.method public constructor <init>(Lep6;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lep6$g;->c:Lep6;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lep6$g;->a:Z

    .line 3
    iput-boolean p1, p0, Lep6$g;->b:Z

    .line 4
    iput-boolean p2, p0, Lep6$g;->a:Z

    .line 5
    iput-boolean p3, p0, Lep6$g;->b:Z

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [[J

    const/4 v0, 0x0

    .line 2
    aget-object v2, p1, v0

    const/4 v0, 0x1

    .line 3
    aget-object v3, p1, v0

    const/4 v0, 0x2

    .line 4
    aget-object v4, p1, v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lep6$g;->c:Lep6;

    iget-boolean v5, p0, Lep6$g;->a:Z

    iget-boolean v6, p0, Lep6$g;->b:Z

    invoke-virtual/range {v1 .. v6}, Lep6;->A([J[J[JZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
