.class public final synthetic Ln52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ll52;


# direct methods
.method public constructor <init>(Ll52;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln52;->e:Ll52;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln52;->e:Ll52;

    .line 1
    invoke-virtual {v0}, Ll52;->a()V

    return-void
.end method
