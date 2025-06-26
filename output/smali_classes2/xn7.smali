.class public final Lxn7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsn7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsn7<",
        "Ldn7;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Ltl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltl7<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lrj7<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILtl7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Ltl7<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lrj7<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxn7;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lxn7;->b:I

    iput p3, p0, Lxn7;->c:I

    iput-object p4, p0, Lxn7;->d:Ltl7;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ldn7;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lxn7$a;

    invoke-direct {v0, p0}, Lxn7$a;-><init>(Lxn7;)V

    return-object v0
.end method
