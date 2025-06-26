.class public final synthetic Lb46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb45;


# instance fields
.field public final a:Lsb7;


# direct methods
.method public constructor <init>(Lsb7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb46;->a:Lsb7;

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lb46;->a:Lsb7;

    .line 1
    check-cast v0, Lag7$a;

    invoke-virtual {v0, p1}, Lag7$a;->c(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v0}, Lag7$a;->a()V

    return-void
.end method
