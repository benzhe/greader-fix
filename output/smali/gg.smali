.class public Lgg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxg$b;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Llg$d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llg$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Llg$c;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Z

.field public final k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lxg$b;Llg$d;Ljava/util/List;ZLlg$c;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lxg$b;",
            "Llg$d;",
            "Ljava/util/List<",
            "Llg$b;",
            ">;Z",
            "Llg$c;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lgg;->a:Lxg$b;

    .line 3
    iput-object p1, p0, Lgg;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lgg;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lgg;->d:Llg$d;

    .line 6
    iput-object p5, p0, Lgg;->e:Ljava/util/List;

    .line 7
    iput-boolean p6, p0, Lgg;->f:Z

    .line 8
    iput-object p7, p0, Lgg;->g:Llg$c;

    .line 9
    iput-object p8, p0, Lgg;->h:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p9, p0, Lgg;->i:Ljava/util/concurrent/Executor;

    .line 11
    iput-boolean p11, p0, Lgg;->j:Z

    .line 12
    iput-boolean p12, p0, Lgg;->k:Z

    return-void
.end method
