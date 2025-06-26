.class public final Lrq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luc7<",
        "Lrx6;",
        "Lap6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lap6;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lap6;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lrq6;->e:Lap6;

    iput-object p2, p0, Lrq6;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lrx6;

    const-string v0, "article"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lap6;

    invoke-direct {v0}, Lap6;-><init>()V

    .line 4
    iget-object v1, p1, Lrx6;->a:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrq6;->e:Lap6;

    iget-object v1, v1, Lap6;->h:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lrx6;->a:Ljava/lang/String;

    .line 7
    :goto_0
    iput-object v1, v0, Lap6;->h:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lrx6;->j:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 9
    :goto_1
    iput-object p1, v0, Lap6;->i:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lrq6;->f:Ljava/lang/String;

    iput-object p1, v0, Lap6;->k:Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lrq6;->e:Lap6;

    iget-object v1, p1, Lap6;->j:Ljava/lang/String;

    iput-object v1, v0, Lap6;->j:Ljava/lang/String;

    .line 12
    iget-wide v1, p1, Lap6;->g:J

    iput-wide v1, v0, Lap6;->g:J

    .line 13
    iget-wide v1, p1, Lap6;->p:J

    iput-wide v1, v0, Lap6;->p:J

    return-object v0
.end method
