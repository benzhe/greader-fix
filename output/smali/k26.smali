.class public final synthetic Lk26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lo26;


# direct methods
.method public constructor <init>(Lo26;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk26;->e:Lo26;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lk26;->e:Lo26;

    .line 1
    iget-object v0, v0, Lo26;->d:Lqg6;

    return-object v0
.end method
