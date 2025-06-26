.class public final synthetic La46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lub7;


# instance fields
.field public final a:Le45;


# direct methods
.method public constructor <init>(Le45;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La46;->a:Le45;

    return-void
.end method


# virtual methods
.method public a(Lsb7;)V
    .locals 2

    iget-object v0, p0, La46;->a:Le45;

    .line 1
    new-instance v1, Lb46;

    invoke-direct {v1, p1}, Lb46;-><init>(Lsb7;)V

    .line 2
    invoke-virtual {v0, v1}, Le45;->f(Lb45;)Le45;

    .line 3
    new-instance v1, Lc46;

    invoke-direct {v1, p1}, Lc46;-><init>(Lsb7;)V

    .line 4
    invoke-virtual {v0, v1}, Le45;->d(La45;)Le45;

    return-void
.end method
