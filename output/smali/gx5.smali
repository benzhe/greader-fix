.class public final synthetic Lgx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final a:Lex5$c;


# direct methods
.method public constructor <init>(Lex5$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgx5;->a:Lex5$c;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lgx5;->a:Lex5$c;

    .line 1
    iget-object p1, p1, Lex5$c;->g:Lex5;

    invoke-virtual {p1, p2}, Lex5;->c(Ljava/lang/Throwable;)V

    return-void
.end method
