.class public final synthetic Lml5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final e:Lml5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lml5;

    invoke-direct {v0}, Lml5;-><init>()V

    sput-object v0, Lml5;->e:Lml5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p1, Lnl5;->g:Ljava/nio/charset/Charset;

    const-string p1, "event"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
