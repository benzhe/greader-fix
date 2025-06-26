.class public final synthetic Lej4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final e:Ljava/util/concurrent/Callable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lej4;

    invoke-direct {v0}, Lej4;-><init>()V

    sput-object v0, Lej4;->e:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lfj4;->h:Ljava/util/List;

    sget-object v0, Lv00;->c:Lv00;

    const-string v1, "language-id"

    .line 2
    invoke-virtual {v0, v1}, Lv00;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
