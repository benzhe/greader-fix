.class public final La87;
.super Lr67;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La87$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "La87;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "La87$a;",
            "La87$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final b:La87$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, La87;->c:Ljava/lang/ref/ReferenceQueue;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, La87;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    const-class v0, La87;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, La87;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lf47;)V
    .locals 3

    .line 1
    sget-object v0, La87;->c:Ljava/lang/ref/ReferenceQueue;

    sget-object v1, La87;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-direct {p0, p1}, Lr67;-><init>(Lf47;)V

    .line 3
    new-instance v2, La87$a;

    invoke-direct {v2, p0, p1, v0, v1}, La87$a;-><init>(La87;Lf47;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v2, p0, La87;->b:La87$a;

    return-void
.end method


# virtual methods
.method public m()Lf47;
    .locals 2

    .line 1
    iget-object v0, p0, La87;->b:La87$a;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, La87$a;->e:Z

    .line 3
    iget-object v0, p0, La87;->b:La87$a;

    invoke-virtual {v0}, La87$a;->clear()V

    .line 4
    iget-object v0, p0, Lr67;->a:Lf47;

    invoke-virtual {v0}, Lf47;->m()Lf47;

    move-result-object v0

    return-object v0
.end method
