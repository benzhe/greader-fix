.class public final synthetic Lhj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lkh6;


# direct methods
.method public constructor <init>(Lkh6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhj4;->e:Lkh6;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lhj4;->e:Lkh6;

    invoke-virtual {v0}, Lkh6;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
