.class public final synthetic Lzg6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Lwf5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzg6;

    invoke-direct {v0}, Lzg6;-><init>()V

    sput-object v0, Lzg6;->a:Lwf5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ltf5;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance p1, Lbh6;

    invoke-direct {p1}, Lbh6;-><init>()V

    .line 2
    sget-object v4, Loh6;->e:Ljava/lang/Runnable;

    .line 3
    new-instance v6, Lbh6$a;

    iget-object v2, p1, Lbh6;->a:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, p1, Lbh6;->b:Ljava/util/Set;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lbh6$a;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Ljava/lang/Runnable;Lph6;)V

    .line 4
    iget-object v0, p1, Lbh6;->b:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p1, Lbh6;->a:Ljava/lang/ref/ReferenceQueue;

    iget-object v1, p1, Lbh6;->b:Ljava/util/Set;

    .line 6
    new-instance v2, Lnh6;

    invoke-direct {v2, v0, v1}, Lnh6;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    .line 7
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MlKitCleaner"

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p1
.end method
