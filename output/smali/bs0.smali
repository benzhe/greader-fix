.class public final Lbs0;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbs0;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Lls0;

    invoke-direct {v0}, Lls0;-><init>()V

    iget-object v1, p0, Lbs0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lls0;->a(Ljava/lang/String;)V

    return-void
.end method
