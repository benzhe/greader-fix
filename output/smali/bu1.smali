.class public Lbu1;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final e:Ldm2;


# direct methods
.method public constructor <init>(Ldm2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lbu1;->e:Ldm2;

    return-void
.end method

.method public constructor <init>(Ldm2;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lbu1;->e:Ldm2;

    return-void
.end method

.method public constructor <init>(Ldm2;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iput-object p1, p0, Lbu1;->e:Ldm2;

    return-void
.end method
